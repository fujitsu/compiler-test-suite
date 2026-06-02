#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, unsigned int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, unsigned int, signed char, signed short);
extern signed char v7 (signed int, unsigned short, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned short);
signed short v9 (signed short, signed short);
signed short (*v10) (signed short, signed short) = v9;
extern signed short v11 (unsigned char, signed char, unsigned short);
extern signed short (*v12) (unsigned char, signed char, unsigned short);
extern void v13 (signed short, unsigned char, signed int, unsigned short);
extern void (*v14) (signed short, unsigned char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, signed short, unsigned char, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed int v21 (signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, signed int, unsigned int);
extern unsigned char v25 (signed short, unsigned int, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short);
extern unsigned short v27 (unsigned short, signed char, signed short);
extern unsigned short (*v28) (unsigned short, signed char, signed short);
unsigned short v29 (signed int, unsigned char, signed int);
unsigned short (*v30) (signed int, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed int v32 = 0;
unsigned char v31 = 5;

unsigned short v29 (signed int v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -2;
signed short v38 = 0;
unsigned short v37 = 6;
trace++;
switch (trace)
{
case 3: 
return v37;
case 9: 
return 1;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed short v42 = -1;
unsigned int v41 = 4U;
signed int v40 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v43, signed short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = -4;
signed int v46 = -1;
signed char v45 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v48;
v48 = v17 ();
history[history_index++] = (int)v48;
}
break;
case 11: 
return 1;
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
unsigned short v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
