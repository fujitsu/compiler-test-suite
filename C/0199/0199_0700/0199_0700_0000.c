#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern void v13 (unsigned short, signed int);
extern void (*v14) (unsigned short, signed int);
unsigned short v15 (signed short, signed short, unsigned char);
unsigned short (*v16) (signed short, signed short, unsigned char) = v15;
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
void v19 (unsigned char, signed char);
void (*v20) (unsigned char, signed char) = v19;
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern void v23 (signed short, signed short, unsigned char);
extern void (*v24) (signed short, signed short, unsigned char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char, signed short);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern signed short v29 (signed int, signed int, unsigned char);
extern signed short (*v30) (signed int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed char v32 = 2;
signed char v31 = -3;

signed char v27 (void)
{
{
for (;;) {
unsigned char v36 = 5;
unsigned short v35 = 7;
unsigned char v34 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 6;
unsigned char v40 = 1;
unsigned short v39 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v42, signed short v43, unsigned char v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 6;
unsigned char v46 = 0;
unsigned short v45 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
signed int v50 = -4;
signed short v49 = 2;
unsigned short v48 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v51;
signed int v52;
unsigned char v53;
signed short v54;
v51 = 2 + v50;
v52 = v50 + -4;
v53 = 3 + 5;
v54 = v29 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 14: 
return v49;
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
signed short v57;
v57 = v1 ();
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
