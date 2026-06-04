#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v5 (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char (*v6) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (signed int, signed int, unsigned int, signed int);
extern void (*v10) (signed int, signed int, unsigned int, signed int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned int v13 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned char, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int, signed char);
extern signed char (*v16) (signed int, unsigned int, unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int, signed char, unsigned int);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed char v23 (signed char, signed char, signed int);
extern signed char (*v24) (signed char, signed char, signed int);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
void v29 (unsigned char, unsigned char);
void (*v30) (unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned char v32 = 7;
unsigned short v31 = 6;

void v29 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 0U;
signed char v37 = -2;
unsigned char v36 = 5;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned short v41 = 7;
signed char v40 = -3;
signed char v39 = -3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned char v44 = 7;
unsigned char v43 = 4;
signed short v42 = 2;
trace++;
switch (trace)
{
case 5: 
return 1;
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
signed char v47;
signed char v48;
v47 = 1 + 2;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
