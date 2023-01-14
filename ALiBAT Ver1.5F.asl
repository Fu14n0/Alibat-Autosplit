//Autosplit for Alibat 1.5F
//ALiBAT.exe+0036D4E0  Total Rounds (1~5)
//ALiBAT.exe+0010A0A0  Win rounds (0~5)

state("ALiBAT")
{
	int rounds : "ALiBAT.exe", 0x36D4E0;
	int p1_rounds : "ALiBAT.exe", 0x10A0A0;
}

split
{
	return (current.p1_rounds != old.p1_rounds) && (current.p1_rounds == current.rounds);
}
