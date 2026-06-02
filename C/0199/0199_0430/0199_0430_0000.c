#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (unsigned char, signed char, unsigned int);
extern signed int (*v8) (unsigned char, signed char, unsigned int);
extern unsigned short v9 (unsigned char, signed short, signed int, signed char);
extern unsigned short (*v10) (unsigned char, signed short, signed int, signed char);
extern signed char v11 (signed short, unsigned char, signed short);
extern signed char (*v12) (signed short, unsigned char, signed short);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern signed char v15 (signed char, signed int, signed char);
extern signed char (*v16) (signed char, signed int, signed char);
extern signed int v17 (unsigned short, unsigned int, signed int);
extern signed int (*v18) (unsigned short, unsigned int, signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern void v25 (void);
extern void (*v26) (void);
unsigned short v27 (signed short, unsigned char, unsigned char, unsigned char);
unsigned short (*v28) (signed short, unsigned char, unsigned char, unsigned char) = v27;
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 2U;
unsigned short v31 = 6;

unsigned short v29 (void)
{
{
for (;;) {
signed char v36 = -4;
unsigned short v35 = 2;
unsigned short v34 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v37;
unsigned char v38;
signed short v39;
signed char v40;
v37 = 3 - 2;
v38 = 3 - 0;
v39 = 2 - -2;
v40 = v11 (v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 3: 
{
signed short v41;
unsigned char v42;
signed short v43;
signed char v44;
v41 = -3 - -2;
v42 = 2 + 0;
v43 = -3 + 3;
v44 = v11 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 5: 
return v34;
case 10: 
{
signed short v45;
unsigned char v46;
signed short v47;
signed char v48;
v45 = 3 - -2;
v46 = 6 - 3;
v47 = 0 + -4;
v48 = v11 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned short v27 (signed short v49, unsigned char v50, unsigned char v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 2U;
unsigned int v54 = 4U;
signed char v53 = -2;
trace++;
switch (trace)
{
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
signed int v58;
signed int v59;
unsigned char v60;
v58 = -3 - 1;
v59 = -3 + 0;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
