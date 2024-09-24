all: rebuild

down:
	@"./dc.sh" down

log:
	@"./dc.sh" log

purge:
	@"./dc.sh" purge

rebuild:
	@"./dc.sh" rebuild $(filter-out $@,$(MAKECMDGOALS))

enter:
	@"./dc.sh" enter $(filter-out $@,$(MAKECMDGOALS))

up:
	@"./dc.sh" up $(filter-out $@,$(MAKECMDGOALS))

lite:
	@"./dc.sh" lite $(filter-out $@,$(MAKECMDGOALS))

del:
	@"./dc.sh" del $(filter-out $@,$(MAKECMDGOALS))

%:
	@"./dc.sh" $@
