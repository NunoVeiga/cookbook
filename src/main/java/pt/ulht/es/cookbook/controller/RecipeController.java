package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;
import pt.ulht.es.cookbook.domain.RecipeVersion;

@Controller
public class RecipeController {

	@RequestMapping(method = RequestMethod.GET, value = "/recipes")
	public String listRecipes(Model model) {

		List<Recipe> recipes = new ArrayList<Recipe>(CookbookManager
				.getInstance().getRecipeSet());
		Collections.sort(recipes);
		model.addAttribute("recipes", recipes);
		return "listRecipes";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/create")
	public String showRecipeCreationForm() {

		return "createRecipe";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}")
	public String showRecipe(Model model, @PathVariable String id) {

		Recipe recipe = AbstractDomainObject.fromExternalId(id);
		if (recipe != null) {
			model.addAttribute("recipe", recipe);
			return "detailedRecipe";
		} else {
			return "recipeNotFound";
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}/delete")
	public String deleteTodoList(@PathVariable("id") String id) {
		Recipe recipe = AbstractDomainObject.fromExternalId(id);
		recipe.delete();
		CookbookManager.getInstance().removeRecipe(recipe);
		return "redirect:/recipes/";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/recipes")
	public String createRecipe(@RequestParam Map<String, String> params) {

		String titulo = params.get("titulo");
		String problema = params.get("problema");
		String solucao = params.get("solucao");
		String autor = params.get("autor");
		String tags = params.get("tags");

		Recipe recipe = new Recipe(titulo, problema, solucao, autor, tags);

		return "redirect:/recipes/" + recipe.getExternalId();

	}

	@RequestMapping(method = RequestMethod.POST, value = "/")
	public String searchRecipe(@RequestParam Map<String, String> params,
			Model model) {

		String aprocurar = params.get("aprocurar");
		List<String> palavrasaprocurar = new ArrayList<String>(
				Arrays.asList(aprocurar.split("\\s*(=>|,|\\s)\\s*")));
		List<Recipe> recipes = new ArrayList<Recipe>(CookbookManager
				.getInstance().getRecipeSet());
		List<Recipe> receitasdapesquisa = new ArrayList<Recipe>();

		for (int i = 0; i < palavrasaprocurar.size(); i++) {

			for (int j = 0; j < recipes.size(); j++) {

				if (recipes.get(j).getLastVersion().getTitle().toLowerCase()
						.contains(palavrasaprocurar.get(i))) {

					receitasdapesquisa.add(recipes.get(j));
					continue;

				} else if (recipes.get(j).getLastVersion().getProblem()
						.toLowerCase().contains(palavrasaprocurar.get(i))) {

					receitasdapesquisa.add(recipes.get(j));
					continue;

				} else if (recipes.get(j).getLastVersion().getSolution()
						.toLowerCase().contains(palavrasaprocurar.get(i))) {

					receitasdapesquisa.add(recipes.get(j));
					continue;

				} else if (recipes.get(j).getLastVersion().getAuthor()
						.toLowerCase().contains(palavrasaprocurar.get(i))) {

					receitasdapesquisa.add(recipes.get(j));
					continue;

				} else if (recipes.get(j).getLastVersion().getTags()
						.toLowerCase().contains(palavrasaprocurar.get(i))) {

					receitasdapesquisa.add(recipes.get(j));
					continue;

				}

			}

		}
		Collections.sort(receitasdapesquisa);
		model.addAttribute("recipes", receitasdapesquisa);

		return "listRecipes";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/editrecipe")
	public String editRecipe(@RequestParam Map<String, String> params,
			Model model) {

		String id = params.get("id");
		String titulo = params.get("titulo");
		String problema = params.get("problema");
		String solucao = params.get("solucao");
		String autor = params.get("autor");
		String tags = params.get("tags");

		model.addAttribute("id", id);
		model.addAttribute("titulo", titulo);
		model.addAttribute("problema", problema);
		model.addAttribute("solucao", solucao);
		model.addAttribute("autor", autor);
		model.addAttribute("tags", tags);

		return "editRecipe";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/editrecipe")
	public String createRecipeversion(@RequestParam Map<String, String> params) {

		String id = params.get("id");
		String titulo = params.get("titulo");
		String problema = params.get("problema");
		String solucao = params.get("solucao");
		String autor = params.get("autor");
		String tags = params.get("tags");

		RecipeVersion versao= new RecipeVersion(titulo, problema, solucao, autor, tags);
		Recipe recipe = AbstractDomainObject.fromExternalId(id);
		recipe.addRecipeVersion(versao);

		return "redirect:/recipes/" + recipe.getExternalId();

	}

}