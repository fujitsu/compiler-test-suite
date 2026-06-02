#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned char);
extern void (*v2) (unsigned short, signed int, unsigned char);
extern void v3 (unsigned char, unsigned int, unsigned short, signed char);
extern void (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern signed int v7 (signed short, signed short, signed short);
extern signed int (*v8) (signed short, signed short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned char, signed char, unsigned int);
extern unsigned int (*v16) (unsigned char, signed char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned short v21 (signed short, unsigned char);
unsigned short (*v22) (signed short, unsigned char) = v21;
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
unsigned short v29 (unsigned short, unsigned int);
unsigned short (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed int v32 = -2;
unsigned int v31 = 1U;

unsigned short v29 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
unsigned short v37 = 1;
unsigned short v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 5;
unsigned short v41 = 4;
signed int v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed short v43, unsigned char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
unsigned char v46 = 3;
signed char v45 = 3;
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
unsigned short v50;
signed int v51;
unsigned char v52;
v50 = 0 - 4;
v51 = v32 + v32;
v52 = 6 - 2;
v1 (v50, v51, v52);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
