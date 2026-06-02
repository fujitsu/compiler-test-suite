#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed char, unsigned short);
static unsigned int (*v2) (signed char, unsigned short) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned char v9 (unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned int);
extern void v11 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v12) (unsigned int, unsigned char, signed char, unsigned char);
extern signed int v13 (unsigned short, signed char);
extern signed int (*v14) (unsigned short, signed char);
extern signed short v15 (signed char, unsigned short);
extern signed short (*v16) (signed char, unsigned short);
extern unsigned char v17 (signed short, signed char, signed short);
extern unsigned char (*v18) (signed short, signed char, signed short);
unsigned char v19 (unsigned int, unsigned int, unsigned short, unsigned char);
unsigned char (*v20) (unsigned int, unsigned int, unsigned short, unsigned char) = v19;
extern signed char v21 (unsigned short, signed int, signed char);
extern signed char (*v22) (unsigned short, signed int, signed char);
extern signed int v23 (unsigned int, signed int, unsigned short, unsigned char);
extern signed int (*v24) (unsigned int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned char v27 (unsigned short, signed int, unsigned char);
extern unsigned char (*v28) (unsigned short, signed int, unsigned char);
unsigned int v29 (unsigned char, signed char);
unsigned int (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed int v32 = -4;
signed short v31 = -2;

unsigned int v29 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
unsigned short v37 = 4;
signed char v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v39, unsigned int v40, unsigned short v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -1;
signed int v44 = -3;
unsigned short v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed char v46, unsigned short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 2;
unsigned char v49 = 3;
signed char v48 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v51;
unsigned short v52;
v51 = 0 - -4;
v52 = v25 (v51);
history[history_index++] = (int)v52;
}
break;
case 12: 
return 5U;
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
signed char v55;
unsigned short v56;
unsigned int v57;
v55 = 1 - -2;
v56 = 1 - 1;
v57 = v1 (v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
