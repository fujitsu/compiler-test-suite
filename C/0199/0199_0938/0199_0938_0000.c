#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (signed short, signed short);
extern signed char (*v4) (signed short, signed short);
unsigned short v5 (unsigned int, unsigned short, signed short);
unsigned short (*v6) (unsigned int, unsigned short, signed short) = v5;
extern unsigned int v7 (signed char, signed int, signed int, unsigned int);
extern unsigned int (*v8) (signed char, signed int, signed int, unsigned int);
extern unsigned int v9 (unsigned int, unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char, signed int, unsigned char);
void v11 (void);
void (*v12) (void) = v11;
extern unsigned int v13 (signed short, signed char);
extern unsigned int (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned char, signed char);
extern unsigned char (*v24) (unsigned short, unsigned char, signed char);
signed short v25 (signed short, unsigned int, unsigned short);
signed short (*v26) (signed short, unsigned int, unsigned short) = v25;
extern signed int v27 (signed char, unsigned short, unsigned short, signed char);
extern signed int (*v28) (signed char, unsigned short, unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v30) (unsigned int, unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed char v32 = 2;
unsigned short v31 = 5;

signed short v25 (signed short v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
unsigned short v38 = 6;
signed short v37 = -3;
trace++;
switch (trace)
{
case 9: 
return -4;
case 11: 
return v37;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned char v42 = 7;
unsigned char v41 = 2;
unsigned int v40 = 4U;
trace++;
switch (trace)
{
case 3: 
{
signed char v43;
unsigned char v44;
v43 = 2 + -2;
v44 = v19 (v43);
history[history_index++] = (int)v44;
}
break;
case 5: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v45, unsigned short v46, signed short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 3U;
unsigned short v49 = 0;
signed short v48 = 3;
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
unsigned char v53;
v53 = v1 ();
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
