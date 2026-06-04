#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern unsigned short v7 (signed char, signed int, unsigned char, unsigned short);
extern unsigned short (*v8) (signed char, signed int, unsigned char, unsigned short);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, unsigned char);
signed int v21 (unsigned int, signed short);
signed int (*v22) (unsigned int, signed short) = v21;
unsigned int v23 (signed int);
unsigned int (*v24) (signed int) = v23;
extern unsigned int v25 (unsigned char, signed char);
extern unsigned int (*v26) (unsigned char, signed char);
signed short v27 (unsigned short, unsigned short);
signed short (*v28) (unsigned short, unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed int v32 = -3;
signed char v31 = 0;

signed short v27 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -4;
signed int v37 = -3;
signed int v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -3;
signed short v41 = -3;
signed int v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v43, signed short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = -3;
unsigned int v46 = 2U;
unsigned short v45 = 6;
trace++;
switch (trace)
{
case 2: 
return -3;
default: abort ();
}
}
}
}

signed short v5 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 6;
signed int v50 = 1;
signed int v49 = -2;
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
signed short v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
