#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned short, signed short);
extern void (*v2) (signed char, unsigned short, unsigned short, signed short);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned char v9 (unsigned short, signed int, unsigned char, signed char);
extern unsigned char (*v10) (unsigned short, signed int, unsigned char, signed char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, unsigned short, unsigned short);
extern unsigned char (*v16) (signed short, unsigned short, unsigned short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, signed char, unsigned int, unsigned short);
unsigned char v27 (unsigned int, signed char, signed int);
unsigned char (*v28) (unsigned int, signed char, signed int) = v27;
extern unsigned char v29 (signed char, unsigned int, unsigned char);
extern unsigned char (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned int v32 = 2U;
unsigned short v31 = 2;

unsigned char v27 (unsigned int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
unsigned short v38 = 5;
signed char v37 = 1;
trace++;
switch (trace)
{
case 3: 
return v39;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed char v42 = 2;
signed char v41 = -1;
unsigned int v40 = 5U;
trace++;
switch (trace)
{
case 9: 
return 5;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned char v45 = 3;
unsigned int v44 = 0U;
signed char v43 = 0;
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
signed char v48;
unsigned short v49;
unsigned short v50;
signed short v51;
v48 = 0 - -1;
v49 = 5 + v31;
v50 = 1 - v31;
v51 = -2 - -4;
v1 (v48, v49, v50, v51);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
