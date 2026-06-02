#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed int, signed int, signed char);
extern signed char (*v2) (signed int, signed int, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed int, signed char, unsigned char);
extern unsigned char (*v8) (signed int, signed char, unsigned char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed char, signed int, unsigned char);
extern signed short (*v18) (signed char, signed int, unsigned char);
extern unsigned short v19 (unsigned int, signed char, signed char, signed int);
extern unsigned short (*v20) (unsigned int, signed char, signed char, signed int);
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
unsigned int v23 (unsigned char, unsigned char, unsigned char, unsigned int);
unsigned int (*v24) (unsigned char, unsigned char, unsigned char, unsigned int) = v23;
extern void v25 (unsigned short, signed char);
extern void (*v26) (unsigned short, signed char);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed short v32 = 2;
signed short v31 = 2;

unsigned char v29 (void)
{
{
for (;;) {
signed int v36 = 1;
signed int v35 = 3;
signed int v34 = -1;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return 4;
case 6: 
return 1;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v37, unsigned char v38, unsigned char v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
unsigned int v42 = 0U;
signed char v41 = 0;
trace++;
switch (trace)
{
case 10: 
return v40;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v46 = -3;
signed int v45 = -2;
unsigned short v44 = 4;
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
signed int v49;
signed int v50;
signed char v51;
signed char v52;
v49 = 1 - 2;
v50 = 3 + 2;
v51 = -1 + 2;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
