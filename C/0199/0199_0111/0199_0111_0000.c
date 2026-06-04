#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed char);
static unsigned int (*v2) (signed char) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned short);
extern signed char (*v8) (signed int, unsigned short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
void v11 (void);
void (*v12) (void) = v11;
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed char, signed int, signed short, signed int);
extern signed int (*v16) (signed char, signed int, signed short, signed int);
extern unsigned int v17 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v18) (unsigned char, signed int, signed char, unsigned short);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed int v25 (signed char, unsigned char, signed short, signed short);
extern signed int (*v26) (signed char, unsigned char, signed short, signed short);
extern unsigned short v27 (signed short, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed short v32 = 2;
signed char v31 = 1;

signed int v19 (void)
{
{
for (;;) {
signed int v36 = 2;
unsigned char v35 = 6;
signed int v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed int v39 = 0;
unsigned int v38 = 4U;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -2;
unsigned short v42 = 6;
signed short v41 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v44;
signed int v45;
signed char v46;
unsigned short v47;
unsigned int v48;
v44 = 3 + 6;
v45 = -4 - -4;
v46 = v43 + v40;
v47 = v42 + 2;
v48 = v17 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 2: 
{
signed int v49;
unsigned short v50;
signed char v51;
v49 = 1 - 1;
v50 = 3 - v42;
v51 = v7 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return 0U;
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
signed char v54;
unsigned int v55;
v54 = v31 - v31;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
