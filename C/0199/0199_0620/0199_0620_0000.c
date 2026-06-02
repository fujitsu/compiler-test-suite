#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
signed short v3 (unsigned int, unsigned char, unsigned int);
signed short (*v4) (unsigned int, unsigned char, unsigned int) = v3;
extern signed short v5 (signed char, signed char, unsigned char, unsigned int);
extern signed short (*v6) (signed char, signed char, unsigned char, unsigned int);
extern void v7 (signed short, signed short, signed short, signed short);
extern void (*v8) (signed short, signed short, signed short, signed short);
extern void v9 (unsigned short, unsigned short);
extern void (*v10) (unsigned short, unsigned short);
extern unsigned short v11 (signed short, signed int, signed char, signed char);
extern unsigned short (*v12) (signed short, signed int, signed char, signed char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed short, unsigned char, signed int, signed int);
extern unsigned int (*v18) (signed short, unsigned char, signed int, signed int);
extern signed int v19 (signed short, unsigned short, signed int, signed int);
extern signed int (*v20) (signed short, unsigned short, signed int, signed int);
void v21 (signed char, signed int);
void (*v22) (signed char, signed int) = v21;
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed char, unsigned int, unsigned int);
extern signed int (*v28) (signed char, unsigned int, unsigned int);
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed int v32 = -4;
unsigned short v31 = 0;

unsigned short v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 5U;
unsigned char v36 = 2;
unsigned int v35 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed char v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 1;
unsigned short v41 = 7;
signed char v40 = -2;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v43;
unsigned char v44;
v43 = 7U + 5U;
v44 = v23 (v43);
history[history_index++] = (int)v44;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v3 (unsigned int v45, unsigned char v46, unsigned int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1;
unsigned short v49 = 6;
unsigned char v48 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v51;
signed int v52;
signed char v53;
signed char v54;
unsigned short v55;
v51 = 2 - -4;
v52 = v50 + v50;
v53 = 1 - 0;
v54 = -3 - -3;
v55 = v11 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
return 3;
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
unsigned char v58;
unsigned short v59;
unsigned int v60;
unsigned short v61;
v58 = 2 - 5;
v59 = 5 + 0;
v60 = 1U - 1U;
v61 = v1 (v58, v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
