#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned int, unsigned short, unsigned short);
static unsigned short (*v2) (unsigned int, unsigned short, unsigned short) = v1;
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
extern signed short v13 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v14) (unsigned int, signed short, unsigned short, unsigned short);
extern unsigned char v15 (unsigned int, unsigned char, signed int);
extern unsigned char (*v16) (unsigned int, unsigned char, signed int);
void v17 (void);
void (*v18) (void) = v17;
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern unsigned int v21 (unsigned int, signed short, signed short);
extern unsigned int (*v22) (unsigned int, signed short, signed short);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned int v27 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned short v32 = 3;
unsigned char v31 = 3;

void v17 (void)
{
{
for (;;) {
unsigned char v36 = 6;
signed char v35 = 2;
unsigned char v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned int v37, unsigned short v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 7;
unsigned int v41 = 0U;
signed int v40 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v43;
signed char v44;
unsigned int v45;
v43 = 6 - 6;
v44 = -2 - -1;
v45 = v5 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 14: 
return v38;
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
unsigned int v48;
unsigned short v49;
unsigned short v50;
unsigned short v51;
v48 = 0U + 7U;
v49 = 5 - 2;
v50 = 1 + v32;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
