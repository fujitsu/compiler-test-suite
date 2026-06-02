#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (signed int, unsigned char, signed int);
extern signed int (*v4) (signed int, unsigned char, signed int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
signed short v7 (unsigned int, signed int, unsigned short, signed int);
signed short (*v8) (unsigned int, signed int, unsigned short, signed int) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned short, unsigned int, signed int);
extern signed int (*v12) (unsigned short, unsigned int, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned char v15 (unsigned short, unsigned int, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned int, unsigned short, signed char);
unsigned int v17 (signed short);
unsigned int (*v18) (signed short) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern unsigned short v23 (signed short, unsigned char, signed char);
extern unsigned short (*v24) (signed short, unsigned char, signed char);
signed int v25 (signed char, unsigned int, unsigned char, unsigned int);
signed int (*v26) (signed char, unsigned int, unsigned char, unsigned int) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int);
extern unsigned int (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed int v32 = -2;
signed int v31 = 1;

signed int v25 (signed char v34, unsigned int v35, unsigned char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 0;
unsigned int v39 = 1U;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned short v43 = 2;
unsigned int v42 = 2U;
signed int v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = -2;
signed short v46 = 1;
signed char v45 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v48;
v48 = v27 ();
history[history_index++] = (int)v48;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed short v7 (unsigned int v49, signed int v50, unsigned short v51, signed int v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 3;
signed short v54 = 1;
unsigned char v53 = 2;
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
signed short v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
