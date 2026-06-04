#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed char, signed short);
extern signed short (*v2) (signed short, signed char, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (unsigned short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v23 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned short, unsigned int);
extern signed char v25 (unsigned short, unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int v27 (signed char, signed char, signed int);
extern unsigned int (*v28) (signed char, signed char, signed int);
extern signed short v29 (signed char, unsigned short, signed int, signed char);
extern signed short (*v30) (signed char, unsigned short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed short v32 = 1;
signed int v31 = 0;

signed short v17 (void)
{
{
for (;;) {
unsigned short v36 = 1;
unsigned char v35 = 3;
unsigned char v34 = 4;
trace++;
switch (trace)
{
case 5: 
{
signed char v37;
v37 = 3 - -4;
v19 (v37);
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed char v40 = 2;
signed char v39 = 1;
unsigned short v38 = 4;
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
signed short v43;
signed char v44;
signed short v45;
signed short v46;
v43 = 0 + 2;
v44 = -4 - -3;
v45 = -3 - -1;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
