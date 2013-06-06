package pt.ulht.es.cookbook.domain;

import org.joda.time.DateTime;

public class RecipeVersion extends RecipeVersion_Base implements Comparable<RecipeVersion>{
    
    public  RecipeVersion(String title, String problem, String solution, String author,String difficulty, String tags) {
    	setTitle(title);
    	setProblem(problem);
    	setSolution(solution);
    	setAuthor(author);
    	setDifficulty(difficulty);
    	setTags(tags);
    	setCreationTimestamp(new DateTime());
    }
	
	public void delete() {
		setRecipe(null);
		super.deleteDomainObject();
	}

	public int compareTo(RecipeVersion o) {
		return getCreationTimestamp().compareTo(o.getCreationTimestamp());
	}

    
}
