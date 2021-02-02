In the name of Allah
* hspice code for simulation phase1 project for Principle Of Electronic
* AmirHossein Safari <--------> 97101994
.option vntol=0.01n
**********************//models//********************
.model	npn_transistor	NPN	bf = 200	VA = 100	
.model	pnp_transistor	PNP	bf = 50		VA = 50		

**********************//Supply//********************
Vcc	100	0	2.5
Vee	200	0	-2.5

**********************//Inputs//********************
Eip	5	7	1	0	0.5
Ein	8	6	1	0	-0.5
*Vcm	7	0	dc=0	sin(0 2 100k 0 0 0)
Vcm	7	0	dc=0	ac = 0
*Vid	1	0	sin(0 1u 100k 0 0 0)
Vid	1	0	sin(0 2.8u 100k 0 0 0)

**********************//Elements//********************
R1	100	2	8.6k
R2	100	11	9k
R3	11	0	16k
R4	100	18	7.2k
R5	24	0	3.6k
R6	100	25	4.3k

**********************//transistors//********************
Q3	2	2	200	npn_transistor
Q4	3	2	200	npn_transistor
Q5	4	5	3	npn_transistor
Q6	10	8	3	npn_transistor
Q7	14	11	4	pnp_transistor
Q8	13	11	10	pnp_transistor
Q9	14	14	15	npn_transistor
Q10	13	14	16	npn_transistor
Q11	15	15	200	npn_transistor
Q12	16	15	200	npn_transistor
Q13	4	9	100	pnp_transistor
Q14	10	9	100	pnp_transistor
Q15	9	9	100	pnp_transistor
Q16	9	18	19	npn_transistor
Q17	18	18	20	npn_transistor
Q18	19	20	200	npn_transistor
Q19	20	20	200	npn_transistor
Q20	21	24	100	pnp_transistor
Q21	24	24	100	pnp_transistor
Q24	200	13	21	pnp_transistor
Q25	300	21	100	pnp_transistor
Q26	25	25	200	npn_transistor
Q27	300	25	200	npn_transistor

**********************//DCF//********************
E3	301	0	300	105	1
vref	105	0	0
Rx	301	302	1x
Cx	302	0	1
E4	6	7	302	0	1

**********************//Analysis//***************
.op
*.ac lin 1500 1 100k
.tran	0.01us	5ms

.end




	