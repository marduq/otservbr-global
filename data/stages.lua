-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 50
	}, {
		minlevel = 9,
		maxlevel = 45,
		multiplier = 40
	}, {
		minlevel = 46,
		maxlevel = 79,
		multiplier = 30
	}, {
		minlevel = 80,
		maxlevel = 129,
		multiplier = 25
	}, {
		minlevel = 130,
		maxlevel = 160,
		multiplier = 30
	}, {
		minlevel = 130,
		maxlevel = 160,
		multiplier = 25
	}, {
		minlevel = 161,
		maxlevel = 190,
		multiplier = 15
	}, {
		minlevel = 191,
		maxlevel = 220,
		multiplier = 10
	}, {
		minlevel = 221,
		maxlevel = 250,
		multiplier = 5
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 60,
		multiplier = 25
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 15
	}, {
		minlevel = 81,
		maxlevel = 110,
		multiplier = 10
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 5
	}, {
		minlevel = 126,
		multiplier = 2
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 20
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 15
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 10
	}, {
		minlevel = 101,
		maxlevel = 110,
		multiplier = 5
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 3
	}, {
		minlevel = 126,
		multiplier = 2
	}
}
