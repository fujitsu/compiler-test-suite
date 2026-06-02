#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int);
extern signed int (*v2) (unsigned char, unsigned short, signed int);
extern unsigned short v3 (unsigned int, signed short, signed char);
extern unsigned short (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (signed int, signed int, signed short);
extern unsigned short (*v6) (signed int, signed int, signed short);
extern signed short v7 (signed char, unsigned char, unsigned short);
extern signed short (*v8) (signed char, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v11 (signed short, unsigned short, signed char, unsigned int);
extern signed short (*v12) (signed short, unsigned short, signed char, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern signed int v17 (signed char, unsigned int, unsigned int);
extern signed int (*v18) (signed char, unsigned int, unsigned int);
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
extern unsigned short v21 (signed short, unsigned char, unsigned char, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned short, signed int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed char v32 = 2;
signed char v31 = 0;

signed int v19 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 1;
signed char v36 = 0;
unsigned char v35 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed short v38;
unsigned char v39;
unsigned short v40;
signed int v41;
unsigned char v42;
v38 = 0 - 0;
v39 = 5 - 5;
v40 = 0 - 1;
v41 = 3 + -2;
v42 = v25 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
signed short v43;
unsigned char v44;
unsigned short v45;
signed int v46;
unsigned char v47;
v43 = -1 - 1;
v44 = 1 + v35;
v45 = 4 + 2;
v46 = 2 + -2;
v47 = v25 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 5: 
{
signed short v48;
unsigned char v49;
unsigned short v50;
signed int v51;
unsigned char v52;
v48 = 0 - -2;
v49 = 0 - 3;
v50 = 5 - 2;
v51 = 0 + 0;
v52 = v25 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 7: 
{
signed short v53;
unsigned char v54;
unsigned char v55;
signed short v56;
unsigned short v57;
v53 = 1 - 1;
v54 = 6 - v35;
v55 = 1 - 0;
v56 = -3 - -4;
v57 = v21 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 13: 
return 2;
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
unsigned char v60;
unsigned short v61;
signed int v62;
signed int v63;
v60 = 4 - 0;
v61 = v33 + 1;
v62 = -2 - 1;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
