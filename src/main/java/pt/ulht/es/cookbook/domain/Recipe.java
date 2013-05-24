package pt.ulht.es.cookbook.domain;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.joda.time.DateTime;

public class Recipe extends Recipe_Base implements Comparable<Recipe> {
    
    public  Recipe(String title, String problem, String solution, String author, String tags) {
    	RecipeVersion firstVersion = new RecipeVersion(title, problem, solution, author, tags);
    	addRecipeVersion(firstVersion);
    	//    	setTitle(title);
//    	setProblem(problem);
//    	setSolution(solution);
//    	setAuthor(author);
//    	setTags(tags);
//    	setCreationTimestamp(new DateTime());
    	setCookbookManager(CookbookManager.getInstance());
    }
    
    public RecipeVersion getLastVersion() {
    	List<RecipeVersion> recipeVersionList = new ArrayList<RecipeVersion>(getRecipeVersion());
    	Collections.sort(recipeVersionList);
    	return recipeVersionList.get(recipeVersionList.size()-1)
;    }

	public int compareTo(Recipe o) {
		return getLastVersion().getTitle().toLowerCase().compareTo(o.getLastVersion().getTitle().toLowerCase());
	}
	
	public void delete() {
		for(RecipeVersion rv : getRecipeVersionSet()) {
			rv.delete();
		}
		setCookbookManager(null);
		super.deleteDomainObject();
	}


}
