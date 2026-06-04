#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
signed char v11 (unsigned int, signed int);
signed char (*v12) (unsigned int, signed int) = v11;
signed short v13 (unsigned char, signed char, unsigned char, signed short);
signed short (*v14) (unsigned char, signed char, unsigned char, signed short) = v13;
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed short v23 (signed short, unsigned char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed char v32 = 0;
unsigned char v31 = 7;

signed char v19 (void)
{
{
for (;;) {
signed char v36 = 3;
signed char v35 = -4;
unsigned char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v37, signed char v38, unsigned char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 6U;
unsigned short v42 = 4;
signed int v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v44, signed int v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 2;
signed short v47 = -4;
unsigned int v46 = 7U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v49;
unsigned int v50;
unsigned short v51;
v49 = v48 - v48;
v50 = v44 + 1U;
v51 = v21 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 3: 
{
signed short v52;
unsigned char v53;
v52 = 1 - 3;
v53 = v17 (v52);
history[history_index++] = (int)v53;
}
break;
case 7: 
{
unsigned char v54;
unsigned int v55;
unsigned short v56;
v54 = v48 - v48;
v55 = 0U - 5U;
v56 = v21 (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 15: 
return -3;
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
signed int v59;
unsigned char v60;
signed char v61;
unsigned int v62;
v59 = -2 - v33;
v60 = 4 + v31;
v61 = v32 + -1;
v62 = v1 (v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
