#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
extern void v3 (unsigned int, unsigned short, signed short);
extern void (*v4) (unsigned int, unsigned short, signed short);
extern signed int v5 (signed int, unsigned short);
extern signed int (*v6) (signed int, unsigned short);
extern signed int v7 (unsigned int, signed int);
extern signed int (*v8) (unsigned int, signed int);
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
extern signed char v13 (signed char, signed short, signed char, signed short);
extern signed char (*v14) (signed char, signed short, signed char, signed short);
extern signed short v15 (signed int, signed int, signed int);
extern signed short (*v16) (signed int, signed int, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (unsigned int, signed short, signed int);
extern unsigned char (*v20) (unsigned int, signed short, signed int);
extern unsigned short v21 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, unsigned int, signed char, signed int);
void v23 (signed short, unsigned short, unsigned short);
void (*v24) (signed short, unsigned short, unsigned short) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (signed short, signed char, signed int);
unsigned char (*v28) (signed short, signed char, signed int) = v27;
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = -4;
signed int v31 = -4;

unsigned char v27 (signed short v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
unsigned char v38 = 0;
signed char v37 = -2;
trace++;
switch (trace)
{
case 3: 
return 1;
case 5: 
return 1;
case 7: 
return v38;
case 9: 
return v38;
default: abort ();
}
}
}
}

void v23 (signed short v40, unsigned short v41, unsigned short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 3;
unsigned short v44 = 5;
signed int v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
unsigned char v48 = 0;
unsigned short v47 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (void)
{
{
for (;;) {
signed short v52 = 0;
unsigned int v51 = 4U;
unsigned short v50 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v53;
unsigned char v54;
v53 = -2 + -3;
v54 = 3 - 0;
v11 (v53, v54);
}
break;
case 12: 
return 6;
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
unsigned short v57;
v57 = v1 ();
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
