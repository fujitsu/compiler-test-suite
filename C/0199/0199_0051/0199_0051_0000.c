#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned short);
static unsigned char (*v2) (unsigned short) = v1;
extern unsigned int v3 (signed char, signed char, unsigned int, signed char);
extern unsigned int (*v4) (signed char, signed char, unsigned int, signed char);
extern unsigned short v5 (signed int, unsigned int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned int, unsigned char);
extern signed char v7 (unsigned short, unsigned short, unsigned int);
extern signed char (*v8) (unsigned short, unsigned short, unsigned int);
extern signed short v9 (unsigned char, signed char, unsigned int);
extern signed short (*v10) (unsigned char, signed char, unsigned int);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
signed short v21 (unsigned int, unsigned char);
signed short (*v22) (unsigned int, unsigned char) = v21;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned char);
extern unsigned short (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = 1;
signed char v31 = 3;

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v36 = 7;
signed short v35 = 1;
signed int v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned int v37, unsigned char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = -4;
signed char v40 = -2;
unsigned short v39 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed short v44 = -1;
unsigned short v43 = 6;
signed short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -4;
signed char v47 = 0;
unsigned int v46 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v49;
signed char v50;
unsigned int v51;
signed char v52;
unsigned int v53;
v49 = v47 + v47;
v50 = -1 + v47;
v51 = v46 - 0U;
v52 = 2 - -2;
v53 = v3 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 16: 
return 3;
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
unsigned short v56;
unsigned char v57;
v56 = 0 + 7;
v57 = v1 (v56);
history[history_index++] = (int)v57;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
