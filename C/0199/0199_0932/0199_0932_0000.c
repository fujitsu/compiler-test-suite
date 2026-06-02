#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed short);
extern signed int (*v8) (unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned char, signed short, signed short);
extern unsigned short (*v10) (unsigned char, signed short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (signed short, unsigned short, unsigned int);
extern signed char (*v26) (signed short, unsigned short, unsigned int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern void v29 (signed char, signed int, signed short, signed short);
extern void (*v30) (signed char, signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed short v32 = 3;
unsigned char v31 = 7;

unsigned short v27 (void)
{
{
for (;;) {
unsigned char v36 = 2;
unsigned char v35 = 4;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v37, unsigned char v38, signed int v39, signed char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 2;
signed int v42 = -3;
unsigned short v41 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed short v46 = -1;
signed char v45 = 1;
unsigned char v44 = 7;
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
unsigned int v49;
v49 = 4U - 2U;
v1 (v49);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
