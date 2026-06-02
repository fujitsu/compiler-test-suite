#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed int, signed short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed char v17 (void);
signed char (*v18) (void) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned int v21 (unsigned int, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (signed int, signed short, unsigned char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed short);
extern signed int (*v28) (signed short, signed short);
signed short v29 (unsigned int, signed int);
signed short (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed int v32 = -1;
unsigned char v31 = 2;

signed short v29 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
unsigned short v37 = 3;
unsigned char v36 = 1;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
return -4;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned int v41 = 3U;
unsigned char v40 = 1;
signed int v39 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed int v44 = 2;
signed short v43 = -3;
signed int v42 = 0;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 3U;
unsigned short v47 = 1;
unsigned short v46 = 4;
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
unsigned int v51;
unsigned short v52;
signed int v53;
signed short v54;
unsigned char v55;
v51 = 3U - 2U;
v52 = 3 + 4;
v53 = v32 + 1;
v54 = v33 + v33;
v55 = v1 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
