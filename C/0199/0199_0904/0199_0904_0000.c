#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed short v7 (signed short, unsigned char, signed char, signed short);
extern signed short (*v8) (signed short, unsigned char, signed char, signed short);
unsigned int v9 (signed short, unsigned char);
unsigned int (*v10) (signed short, unsigned char) = v9;
extern unsigned char v11 (unsigned short, signed char, signed int, signed short);
extern unsigned char (*v12) (unsigned short, signed char, signed int, signed short);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern void v15 (signed int, signed char);
extern void (*v16) (signed int, signed char);
extern unsigned short v17 (unsigned short, signed int, unsigned short);
extern unsigned short (*v18) (unsigned short, signed int, unsigned short);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v21 (signed short, unsigned short, unsigned short);
extern signed int (*v22) (signed short, unsigned short, unsigned short);
extern unsigned short v23 (signed int, signed short, unsigned char, unsigned short);
extern unsigned short (*v24) (signed int, signed short, unsigned char, unsigned short);
extern void v25 (unsigned char, signed short, signed int);
extern void (*v26) (unsigned char, signed short, signed int);
signed short v27 (unsigned int, signed short, unsigned char, signed char);
signed short (*v28) (unsigned int, signed short, unsigned char, signed char) = v27;
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed char v32 = -1;
signed short v31 = -4;

signed short v27 (unsigned int v34, signed short v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
signed char v39 = -4;
signed int v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 4;
signed int v44 = -3;
signed int v43 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v46;
signed short v47;
signed int v48;
v46 = v45 - v45;
v47 = v41 + v41;
v48 = v44 - -2;
v25 (v46, v47, v48);
}
break;
case 3: 
{
signed int v49;
signed short v50;
unsigned char v51;
unsigned short v52;
unsigned short v53;
v49 = 2 + v43;
v50 = v41 + -4;
v51 = 7 + v45;
v52 = 2 - 4;
v53 = v23 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 5: 
{
unsigned char v54;
signed short v55;
signed int v56;
v54 = v45 + v45;
v55 = -2 + v41;
v56 = v43 + v44;
v25 (v54, v55, v56);
}
break;
case 7: 
{
unsigned short v57;
signed int v58;
unsigned short v59;
unsigned short v60;
v57 = 7 - 5;
v58 = 0 + v44;
v59 = 7 - 5;
v60 = v17 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 9: 
{
unsigned char v61;
signed short v62;
signed int v63;
v61 = v45 + v45;
v62 = -4 + v41;
v63 = v44 + v43;
v25 (v61, v62, v63);
}
break;
case 11: 
return 4U;
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
signed char v66;
signed short v67;
signed short v68;
signed int v69;
v66 = 1 - 0;
v67 = v31 - v31;
v68 = v31 + v31;
v69 = v1 (v66, v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
