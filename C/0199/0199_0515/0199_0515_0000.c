#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (signed int, signed short, unsigned int);
extern unsigned int (*v4) (signed int, signed short, unsigned int);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern signed int v11 (unsigned char, unsigned char, signed char);
extern signed int (*v12) (unsigned char, unsigned char, signed char);
void v13 (signed short);
void (*v14) (signed short) = v13;
signed char v15 (unsigned short, unsigned int);
signed char (*v16) (unsigned short, unsigned int) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
unsigned short v19 (signed int, signed char, signed short, signed char);
unsigned short (*v20) (signed int, signed char, signed short, signed char) = v19;
unsigned short v21 (signed int, unsigned char, signed char, signed int);
unsigned short (*v22) (signed int, unsigned char, signed char, signed int) = v21;
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned char v32 = 5;
signed int v31 = 1;

unsigned short v21 (signed int v34, unsigned char v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 2U;
signed char v39 = 2;
signed short v38 = 3;
trace++;
switch (trace)
{
case 2: 
return 0;
case 8: 
return 4;
default: abort ();
}
}
}
}

unsigned short v19 (signed int v41, signed char v42, signed short v43, signed char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 6;
signed short v46 = 1;
unsigned int v45 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v48, unsigned int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 0;
unsigned char v51 = 2;
unsigned char v50 = 6;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

void v13 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 3;
unsigned short v55 = 1;
signed int v54 = 0;
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
signed short v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
