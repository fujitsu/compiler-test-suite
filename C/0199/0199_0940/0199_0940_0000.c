#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, signed int, signed int, signed short);
extern unsigned char (*v4) (unsigned int, signed int, signed int, signed short);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
extern unsigned int v15 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned int, signed short);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short);
extern unsigned char v19 (unsigned int, signed short, signed int, unsigned char);
extern unsigned char (*v20) (unsigned int, signed short, signed int, unsigned char);
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned char v29 (unsigned char, unsigned short);
unsigned char (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned short v32 = 0;
unsigned int v31 = 4U;

unsigned char v29 (unsigned char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 0;
unsigned short v37 = 3;
signed char v36 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = -1;
unsigned char v41 = 7;
signed int v40 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed int v45 = -4;
unsigned int v44 = 0U;
signed char v43 = -1;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v46;
v46 = v27 ();
history[history_index++] = (int)v46;
}
break;
case 10: 
{
unsigned char v47;
v47 = v27 ();
history[history_index++] = (int)v47;
}
break;
case 12: 
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
unsigned short v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
