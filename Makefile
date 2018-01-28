SOURCE1=source/equib06.f90
SOURCE2=source/abundance_equib.f90
SOURCE3=source/diagnostic_equib.f90
MYPROGRAM1=equib06
MYPROGRAM2=abundance_equib
MYPROGRAM3=diagnostic_equib

FC=gfortran

all: $(MYPROGRAM1)

$(MYPROGRAM1): $(SOURCE1)
	$(FC) $(SOURCE1) -o$(MYPROGRAM1) 
	$(FC) $(SOURCE2) -o$(MYPROGRAM2) 
	$(FC) $(SOURCE3) -o$(MYPROGRAM3) 

clean:
	rm -f $(MYPROGRAM1) $(MYPROGRAM2) $(MYPROGRAM3)
	
