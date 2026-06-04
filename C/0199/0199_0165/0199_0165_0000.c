#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int, signed char, unsigned int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern unsigned short v9 (signed short, signed short, unsigned int, signed short);
extern unsigned short (*v10) (signed short, signed short, unsigned int, signed short);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
signed int v13 (signed short, signed short, unsigned int);
signed int (*v14) (signed short, signed short, unsigned int) = v13;
extern signed short v15 (unsigned int, signed char);
extern signed short (*v16) (unsigned int, signed char);
extern signed int v17 (unsigned char, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned char, signed int, signed short, signed char);
extern void (*v22) (unsigned char, signed int, signed short, signed char);
extern void v23 (unsigned int, unsigned short, signed char, signed int);
extern void (*v24) (unsigned int, unsigned short, signed char, signed int);
signed short v25 (signed short, unsigned short, signed int, signed int);
signed short (*v26) (signed short, unsigned short, signed int, signed int) = v25;
extern void v27 (unsigned int, unsigned int, signed char);
extern void (*v28) (unsigned int, unsigned int, signed char);
extern unsigned short v29 (signed short, signed int, unsigned int);
extern unsigned short (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned int v32 = 5U;
signed char v31 = 3;

signed short v25 (signed short v34, unsigned short v35, signed int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -4;
unsigned int v39 = 7U;
unsigned short v38 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v41;
signed char v42;
signed int v43;
v41 = 3 - v35;
v42 = -4 - -4;
v43 = v7 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 4: 
{
unsigned short v44;
signed char v45;
signed int v46;
v44 = 1 - v38;
v45 = 1 - 3;
v46 = v7 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 10: 
{
unsigned short v47;
signed char v48;
signed int v49;
v47 = v38 - v38;
v48 = -2 + 0;
v49 = v7 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return -1;
case 14: 
return v34;
case 16: 
return v40;
default: abort ();
}
}
}
}

signed int v13 (signed short v50, signed short v51, unsigned int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 6;
unsigned short v54 = 0;
unsigned char v53 = 1;
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
unsigned short v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
