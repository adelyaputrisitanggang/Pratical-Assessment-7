package examples.tests;

import com.intuit.karate.junit5.Karate;

public class Runner {
//    @Karate.Test
//    public Karate runUser()
//    {return Karate.run("connectUser").relativeTo(getClass());}
    @Karate.Test
    public Karate runIngredients()
    {return Karate.run("IngredientsRequest").relativeTo(getClass());}
}

