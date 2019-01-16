//GameGridGrind v1.0 by iloath
script "gamegridgrind.ash";
notify iloath;

int make_tickets(int adv_lim)
{
	int count = 0;
	while ((my_adventures() >= 5) && (count * 5 <= adv_lim - 5)) {
		if (item_amount($item[Game Grid token]) <= 0)
		{
			print("No tokens!", "red");
			return count;
		}
		visit_url("place.php?whichplace=arcade&action=arcade_fist", false);
		visit_url("choice.php?pwd=" + my_hash() + "&whichchoice=486&option=5&sumbit=Finish from Memory",true);
		count = count + 1;
	}
	print("Made "+ (count*30) +" tickets","blue");
	return count;
}

void main(int adv_lim){
	make_tickets(adv_lim);
}
