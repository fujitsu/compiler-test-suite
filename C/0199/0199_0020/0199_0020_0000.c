#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int, signed short);
extern signed char (*v2) (unsigned short, unsigned int, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (signed char, unsigned short, unsigned char);
extern unsigned char (*v10) (signed char, unsigned short, unsigned char);
extern unsigned int v13 (unsigned int, signed char, signed int);
extern unsigned int (*v14) (unsigned int, signed char, signed int);
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
unsigned short v17 (signed short);
unsigned short (*v18) (signed short) = v17;
extern unsigned short v19 (signed char, signed short);
extern unsigned short (*v20) (signed char, signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (signed int, signed char, signed char, signed short);
extern signed short (*v24) (signed int, signed char, signed char, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned int v32 = 5U;
unsigned int v31 = 1U;

unsigned short v17 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 4;
unsigned char v36 = 2;
unsigned int v35 = 6U;
trace++;
switch (trace)
{
case 2: 
{
signed int v38;
signed char v39;
signed char v40;
signed short v41;
signed short v42;
v38 = -2 - -2;
v39 = -3 + 2;
v40 = -4 - -4;
v41 = v34 + v34;
v42 = v23 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 4: 
{
signed int v43;
signed char v44;
signed char v45;
signed short v46;
signed short v47;
v43 = -3 + 0;
v44 = 1 + 0;
v45 = -3 - -3;
v46 = v34 - v34;
v47 = v23 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 6: 
{
signed int v48;
signed char v49;
signed char v50;
signed short v51;
signed short v52;
v48 = -2 - 0;
v49 = 1 - 0;
v50 = -4 - -3;
v51 = v34 - v34;
v52 = v23 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 8: 
{
signed int v53;
signed char v54;
signed char v55;
signed short v56;
signed short v57;
v53 = 0 + 0;
v54 = -3 + 3;
v55 = 2 + 3;
v56 = 1 + v34;
v57 = v23 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 10: 
{
signed int v58;
signed char v59;
signed char v60;
signed short v61;
signed short v62;
v58 = -4 + -3;
v59 = -1 - -3;
v60 = -1 - 1;
v61 = v34 - 0;
v62 = v23 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v65;
unsigned int v66;
signed short v67;
signed char v68;
v65 = 3 - 0;
v66 = v31 - v32;
v67 = -2 + 2;
v68 = v1 (v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
