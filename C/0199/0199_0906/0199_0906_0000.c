#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int);
extern signed char (*v2) (unsigned short, unsigned int);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed int v7 (unsigned int, signed short, unsigned short, signed char);
extern signed int (*v8) (unsigned int, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
unsigned char v13 (unsigned int, unsigned int, signed char);
unsigned char (*v14) (unsigned int, unsigned int, signed char) = v13;
extern signed char v15 (signed int, signed short, unsigned int, unsigned char);
extern signed char (*v16) (signed int, signed short, unsigned int, unsigned char);
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned char, unsigned int, signed int);
extern signed int (*v30) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned short v32 = 5;
signed char v31 = -2;

unsigned char v25 (void)
{
{
for (;;) {
signed short v36 = 3;
unsigned int v35 = 5U;
signed short v34 = 0;
trace++;
switch (trace)
{
case 2: 
return 7;
case 4: 
return 2;
case 9: 
return 5;
case 11: 
return 7;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned short v39 = 7;
signed int v38 = 3;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v40, unsigned int v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 0;
signed short v44 = 3;
signed short v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v48 = 2;
unsigned char v47 = 0;
unsigned char v46 = 3;
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
unsigned short v51;
unsigned int v52;
signed char v53;
v51 = v32 + v33;
v52 = 6U - 6U;
v53 = v1 (v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
