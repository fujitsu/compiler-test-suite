#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned char);
static signed short (*v2) (unsigned char) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (signed int, signed short, signed char);
extern unsigned int (*v10) (signed int, signed short, signed char);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
unsigned char v13 (signed short);
unsigned char (*v14) (signed short) = v13;
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern void v23 (void);
extern void (*v24) (void);
signed int v25 (signed int, signed char, unsigned int);
signed int (*v26) (signed int, signed char, unsigned int) = v25;
void v27 (unsigned short, signed int, unsigned char);
void (*v28) (unsigned short, signed int, unsigned char) = v27;
extern signed char v29 (unsigned char, signed short, signed short, unsigned int);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 7U;
unsigned short v31 = 0;

void v27 (unsigned short v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 3;
unsigned char v38 = 0;
signed short v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed int v40, signed char v41, unsigned int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 1;
unsigned int v44 = 6U;
unsigned short v43 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 0;
signed int v48 = 1;
signed int v47 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 0;
signed int v52 = 1;
unsigned char v51 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v54;
unsigned int v55;
v54 = -4 - -2;
v55 = v5 (v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
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
unsigned char v58;
signed short v59;
v58 = 0 - 7;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
