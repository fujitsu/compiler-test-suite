#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed int, unsigned int, unsigned int);
extern unsigned char (*v2) (signed int, signed int, unsigned int, unsigned int);
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
unsigned int v5 (unsigned short, unsigned int);
unsigned int (*v6) (unsigned short, unsigned int) = v5;
extern signed short v7 (signed char, unsigned int, signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int, signed char, unsigned int);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (signed int, signed short, signed short);
extern unsigned char (*v14) (signed int, signed short, signed short);
extern signed short v17 (signed short, signed char, unsigned int);
extern signed short (*v18) (signed short, signed char, unsigned int);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern signed char v21 (signed char, signed char);
extern signed char (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed char, signed char, signed int, signed int);
extern signed int (*v26) (signed char, signed char, signed int, signed int);
unsigned int v29 (signed char, unsigned short);
unsigned int (*v30) (signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned char v32 = 1;
unsigned short v31 = 7;

unsigned int v29 (signed char v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -2;
signed int v37 = 1;
unsigned char v36 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 7;
unsigned int v41 = 7U;
unsigned char v40 = 4;
trace++;
switch (trace)
{
case 5: 
{
v23 ();
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 0;
unsigned int v46 = 1U;
unsigned short v45 = 7;
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
signed int v50;
signed int v51;
unsigned int v52;
unsigned int v53;
unsigned char v54;
v50 = v33 - -2;
v51 = v33 - 3;
v52 = 6U - 0U;
v53 = 6U - 0U;
v54 = v1 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
