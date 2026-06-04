#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (unsigned char, signed char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed char, signed short, signed short);
extern signed short v9 (unsigned short, signed int, unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed int, unsigned short, signed short);
void v11 (void);
void (*v12) (void) = v11;
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
static signed char v15 (void);
static signed char (*v16) (void) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern signed short v21 (signed char, unsigned short, unsigned int);
extern signed short (*v22) (signed char, unsigned short, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned short, signed short, unsigned int, signed short);
extern signed short (*v26) (unsigned short, signed short, unsigned int, signed short);
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
signed short v32 = -4;
signed short v31 = -3;

static signed char v15 (void)
{
{
for (;;) {
signed char v36 = -2;
unsigned char v35 = 0;
unsigned char v34 = 0;
trace++;
switch (trace)
{
case 10: 
return -4;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned char v39 = 4;
unsigned int v38 = 1U;
signed int v37 = -4;
trace++;
switch (trace)
{
case 1: 
{
signed short v40;
unsigned short v41;
v40 = 3 - -1;
v41 = v13 (v40);
history[history_index++] = (int)v41;
}
break;
case 9: 
{
signed char v42;
v42 = v15 ();
history[history_index++] = (int)v42;
}
break;
case 11: 
return;
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
unsigned short v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
