# provide explicit path to g77 if needed:
G77 = g77

all:
	$(G77) -o advf4-31 -finit-local-zero advf4-31.f advsup.f
