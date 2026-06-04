#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned short, unsigned int, unsigned char, signed int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned char, signed int);
extern void v7 (signed char, signed char, signed short, unsigned short);
extern void (*v8) (signed char, signed char, signed short, unsigned short);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern void v11 (unsigned int, unsigned int, unsigned char, unsigned int);
extern void (*v12) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int v13 (signed int, unsigned char);
extern unsigned int (*v14) (signed int, unsigned char);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned short v17 (signed char, unsigned short, signed int, signed short);
extern unsigned short (*v18) (signed char, unsigned short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed int, unsigned char);
extern signed char (*v24) (signed int, unsigned char);
unsigned int v25 (unsigned short, unsigned char);
unsigned int (*v26) (unsigned short, unsigned char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
static unsigned short v29 (void);
static unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 7;
unsigned int v31 = 7U;

static unsigned short v29 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
signed char v35 = -3;
unsigned char v34 = 0;
trace++;
switch (trace)
{
case 3: 
return 3;
case 9: 
return 7;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned short v37, unsigned char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 2;
unsigned int v40 = 3U;
unsigned char v39 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v42;
v42 = v29 ();
history[history_index++] = (int)v42;
}
break;
case 4: 
return v40;
case 8: 
{
unsigned short v43;
v43 = v29 ();
history[history_index++] = (int)v43;
}
break;
case 10: 
return 3U;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned char v46 = 5;
signed int v45 = 0;
signed short v44 = 2;
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
unsigned short v49;
signed int v50;
signed int v51;
v49 = 0 - v32;
v50 = 3 - -4;
v51 = v1 (v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
