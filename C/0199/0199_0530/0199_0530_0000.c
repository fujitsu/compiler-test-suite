#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
unsigned char v3 (unsigned char, unsigned short, unsigned char, unsigned int);
unsigned char (*v4) (unsigned char, unsigned short, unsigned char, unsigned int) = v3;
extern unsigned short v5 (signed int, unsigned char, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, unsigned char, signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern void v9 (unsigned short, unsigned char);
extern void (*v10) (unsigned short, unsigned char);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed char, signed char, unsigned char, unsigned int);
extern signed int (*v22) (signed char, signed char, unsigned char, unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed char v27 (signed int, signed short, unsigned char, signed int);
signed char (*v28) (signed int, signed short, unsigned char, signed int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed char v32 = 0;
signed short v31 = 3;

signed char v27 (signed int v34, signed short v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned char v39 = 5;
signed short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed short v43 = 3;
signed char v42 = 3;
unsigned short v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v44, unsigned short v45, unsigned char v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 2U;
signed short v49 = -4;
unsigned int v48 = 6U;
trace++;
switch (trace)
{
case 2: 
return 5;
case 4: 
{
v29 ();
}
break;
case 16: 
return v44;
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
signed int v53;
signed short v54;
v53 = 0 + -1;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
