#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
extern unsigned short v3 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern signed int v7 (signed char, signed short);
extern signed int (*v8) (signed char, signed short);
extern unsigned int v9 (unsigned char, unsigned char);
extern unsigned int (*v10) (unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern signed int v15 (signed short, signed int);
extern signed int (*v16) (signed short, signed int);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, signed int, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed int, signed char);
signed char v23 (unsigned int);
signed char (*v24) (unsigned int) = v23;
void v25 (unsigned char, signed int);
void (*v26) (unsigned char, signed int) = v25;
extern unsigned short v27 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed int v32 = 0;
unsigned int v31 = 6U;

void v25 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
signed char v37 = -3;
unsigned char v36 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -4;
unsigned int v41 = 3U;
signed int v40 = -3;
trace++;
switch (trace)
{
case 3: 
return v42;
case 5: 
return -1;
default: abort ();
}
}
}
}

static unsigned short v1 (void)
{
{
for (;;) {
signed int v45 = 0;
unsigned int v44 = 3U;
unsigned short v43 = 3;
trace++;
switch (trace)
{
case 0: 
return 3;
case 1: 
{
unsigned char v46;
unsigned char v47;
unsigned char v48;
unsigned short v49;
v46 = 0 - 1;
v47 = 0 + 5;
v48 = 5 + 7;
v49 = v3 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 13: 
return v43;
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
unsigned short v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
