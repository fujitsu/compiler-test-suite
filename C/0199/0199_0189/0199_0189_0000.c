#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int, signed short);
extern unsigned int (*v2) (unsigned int, signed int, signed short);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned char v23 (signed short, signed int);
unsigned char (*v24) (signed short, signed int) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed int, unsigned int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed short);
unsigned short v29 (unsigned short, signed int);
unsigned short (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed int v32 = 3;
signed char v31 = 0;

unsigned short v29 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 4;
signed short v37 = 3;
signed char v36 = -1;
trace++;
switch (trace)
{
case 6: 
return 0;
default: abort ();
}
}
}
}

unsigned char v23 (signed short v39, signed int v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 5;
unsigned short v42 = 2;
unsigned short v41 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed int v46 = -3;
signed char v45 = -4;
unsigned char v44 = 3;
trace++;
switch (trace)
{
case 2: 
return 7;
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
signed int v50;
signed short v51;
unsigned int v52;
v49 = 6U + 7U;
v50 = v32 + v32;
v51 = -1 + 1;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
