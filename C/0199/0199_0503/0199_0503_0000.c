#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned short, signed char);
extern unsigned char (*v2) (signed int, unsigned short, signed char);
unsigned int v3 (signed char, signed char, signed short, signed int);
unsigned int (*v4) (signed char, signed char, signed short, signed int) = v3;
extern signed char v5 (signed int, unsigned int, unsigned char);
extern signed char (*v6) (signed int, unsigned int, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern void v19 (unsigned char, signed short, unsigned int);
extern void (*v20) (unsigned char, signed short, unsigned int);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned int v25 (signed int);
unsigned int (*v26) (signed int) = v25;
unsigned char v27 (unsigned short, unsigned char, signed short);
unsigned char (*v28) (unsigned short, unsigned char, signed short) = v27;
extern unsigned char v29 (unsigned int, unsigned char, signed int);
extern unsigned char (*v30) (unsigned int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned int v32 = 4U;
signed short v31 = -4;

unsigned char v27 (unsigned short v34, unsigned char v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
unsigned int v38 = 6U;
signed short v37 = -4;
trace++;
switch (trace)
{
case 2: 
return v35;
case 5: 
return v35;
case 7: 
return v39;
case 9: 
return 5;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned int v25 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -2;
signed char v42 = -3;
signed char v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v44, signed char v45, signed short v46, signed int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 6;
signed int v49 = 2;
signed short v48 = 1;
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
signed int v53;
unsigned short v54;
signed char v55;
unsigned char v56;
v53 = -3 + -4;
v54 = 3 - 7;
v55 = -3 - 0;
v56 = v1 (v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
