#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v8) (unsigned char, signed int, signed char, unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern signed short v23 (signed short, signed char, unsigned int);
extern signed short (*v24) (signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, unsigned short, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short, unsigned short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed short v32 = 0;
unsigned short v31 = 5;

unsigned int v29 (void)
{
{
for (;;) {
unsigned short v36 = 3;
unsigned int v35 = 1U;
signed char v34 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v37;
v37 = v19 ();
history[history_index++] = (int)v37;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned short v40 = 7;
unsigned int v39 = 2U;
signed short v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 5;
signed short v43 = 1;
unsigned short v42 = 5;
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
signed int v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
