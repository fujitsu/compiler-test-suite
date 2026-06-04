#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
void v3 (signed int, signed short, signed short, unsigned int);
void (*v4) (signed int, signed short, signed short, unsigned int) = v3;
extern signed int v5 (signed char, signed int, unsigned short);
extern signed int (*v6) (signed char, signed int, unsigned short);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned short v9 (signed int, signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed int, signed short, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed int v21 (unsigned short, signed int, signed int);
extern signed int (*v22) (unsigned short, signed int, signed int);
extern unsigned int v23 (signed char, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed int);
extern void v25 (signed char, unsigned short, unsigned char);
extern void (*v26) (signed char, unsigned short, unsigned char);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern void v29 (unsigned char, signed int, signed int);
extern void (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned short v32 = 4;
signed char v31 = -4;

unsigned short v13 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 5;
unsigned char v36 = 3;
unsigned char v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed int v40 = -4;
unsigned int v39 = 6U;
signed int v38 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v41;
signed int v42;
v41 = 3 + 6;
v42 = v15 (v41);
history[history_index++] = (int)v42;
}
break;
case 5: 
{
unsigned short v43;
signed int v44;
v43 = 2 - 5;
v44 = v15 (v43);
history[history_index++] = (int)v44;
}
break;
case 7: 
{
unsigned short v45;
signed int v46;
v45 = 5 - 4;
v46 = v15 (v45);
history[history_index++] = (int)v46;
}
break;
case 9: 
{
signed char v47;
signed int v48;
v47 = 3 + 1;
v48 = v19 (v47);
history[history_index++] = (int)v48;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v3 (signed int v49, signed short v50, signed short v51, unsigned int v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 1U;
unsigned int v54 = 6U;
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
unsigned char v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
