#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char, signed char, signed short);
static unsigned short (*v2) (unsigned char, signed char, signed short) = v1;
extern unsigned char v3 (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned short, signed char, signed char);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
extern unsigned short v13 (signed int, unsigned char, signed short);
extern unsigned short (*v14) (signed int, unsigned char, signed short);
extern void v15 (signed short, unsigned short, signed int);
extern void (*v16) (signed short, unsigned short, signed int);
extern signed int v17 (signed short, unsigned short, unsigned int);
extern signed int (*v18) (signed short, unsigned short, unsigned int);
extern signed short v19 (unsigned int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern unsigned char v25 (unsigned int, signed short, signed char);
extern unsigned char (*v26) (unsigned int, signed short, signed char);
unsigned short v27 (unsigned char, unsigned short);
unsigned short (*v28) (unsigned char, unsigned short) = v27;
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed int v32 = 2;
unsigned short v31 = 5;

void v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 3;
signed char v36 = 0;
signed short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (unsigned char v38, unsigned short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -3;
unsigned int v41 = 6U;
unsigned char v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v43, signed char v44, signed short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = 1;
signed short v47 = 3;
signed short v46 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v49;
unsigned short v50;
signed int v51;
unsigned short v52;
unsigned char v53;
v49 = 1 - 0;
v50 = 1 + 4;
v51 = 0 - -4;
v52 = 7 - 7;
v53 = v3 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 16: 
return 2;
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
unsigned char v56;
signed char v57;
signed short v58;
unsigned short v59;
v56 = 1 + 1;
v57 = -3 + -2;
v58 = 3 + 2;
v59 = v1 (v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
