#include <stdio.h>
#include <stdlib.h>
static void v1 (signed int, unsigned int);
static void (*v2) (signed int, unsigned int) = v1;
extern unsigned int v3 (unsigned char, unsigned int, signed short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed short);
extern void v7 (signed int, unsigned short);
extern void (*v8) (signed int, unsigned short);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short);
extern signed int v13 (signed int, signed int, signed short, unsigned short);
extern signed int (*v14) (signed int, signed int, signed short, unsigned short);
extern signed int v15 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v16) (unsigned int, unsigned char, signed short, unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed char);
extern void (*v18) (signed short, unsigned int, unsigned int, signed char);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
signed short v21 (signed char, unsigned int, signed int, unsigned char);
signed short (*v22) (signed char, unsigned int, signed int, unsigned char) = v21;
extern signed int v23 (signed char, signed int, unsigned int);
extern signed int (*v24) (signed char, signed int, unsigned int);
extern void v25 (unsigned short, unsigned char);
extern void (*v26) (unsigned short, unsigned char);
extern signed int v27 (signed short, signed short, unsigned int, signed char);
extern signed int (*v28) (signed short, signed short, unsigned int, signed char);
extern unsigned short v29 (unsigned int, unsigned int, signed char);
extern unsigned short (*v30) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = 1;
signed short v31 = 1;

signed short v21 (signed char v34, unsigned int v35, signed int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
signed char v39 = -4;
unsigned char v38 = 3;
trace++;
switch (trace)
{
case 6: 
return 2;
default: abort ();
}
}
}
}

void v19 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 5;
unsigned short v43 = 0;
unsigned int v42 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed int v45, unsigned int v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -3;
unsigned int v48 = 5U;
signed char v47 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v50;
unsigned int v51;
v50 = v46 - v46;
v51 = v9 (v50);
history[history_index++] = (int)v51;
}
break;
case 2: 
{
unsigned int v52;
unsigned int v53;
v52 = 7U + 2U;
v53 = v9 (v52);
history[history_index++] = (int)v53;
}
break;
case 4: 
{
signed int v54;
unsigned short v55;
v54 = -2 + 0;
v55 = 5 + 6;
v7 (v54, v55);
}
break;
case 14: 
return;
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
unsigned int v59;
v58 = -3 + -2;
v59 = 1U + 6U;
v1 (v58, v59);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
