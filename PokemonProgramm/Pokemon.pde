class Pokemon
{
  String name;
  String typ;
  int wettkampfpunkte;
  int kraftpunkte;
  int maxKP;
  String angriffsname;
  
  Pokemon(String n, String t, int wp, int kp, int max, String aname )
  {
    name = n;
    typ = t;
    wettkampfpunkte = wp;
    kraftpunkte = kp;
    maxKP = max;
    angriffsname = aname;
  }
  
  void angriff()
  {
    println(name + " hat " + angriffsname + " eingesetzt");
  }
  
  void heilen(int punkte)
  {
    kraftpunkte = kraftpunkte + punkte;
    if(kraftpunkte > maxKP)
    {
      kraftpunkte = maxKP;
    }
  }
  
  void schwaechen(int punkte)
  {
    kraftpunkte = kraftpunkte - punkte;
    if (kraftpunkte < 0)
    {
      kraftpunkte = 0;
    }
  }
  
  void infosAusgeben()
  {
    println("**************");
    println("Mein Pokemon: ");
    println(name);
    println("WP: " + wettkampfpunkte);
    println("KP: " + kraftpunkte);
    println("**************");
    println();
  }
  
}
