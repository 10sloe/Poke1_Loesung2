Pokemon poke1;
Pokemon poke2;

void setup()
{
  size(400, 400);
  background(255);
  poke1 = new Pokemon("Arkani", "Feuer", 1396, 110, 117, "Stromstoß"); 
  poke2 = new Pokemon("Lacterno", "Geist", 709, 87, 87, "Erstauner");
}
void draw()  //Ohne diese Methode funktioniert keyPressed nicht!
{
}

void kampf1()
{
  poke1.angriff();
  // Ueberlege, was passieren soll. 
  // Um wie viele Punkte soll das zweite Pokemon geschwaecht werden?
  poke2.schwaechen(20);
  poke2.angriff();
  poke1.schwaechen(10);
}


void keyPressed()
{
  if (key == 'k')
  {
    kampf1();
  }

  if (key == 'i')
  {
    println("Infos: ");
    poke1.infosAusgeben();
    poke2.infosAusgeben();
  }
}
