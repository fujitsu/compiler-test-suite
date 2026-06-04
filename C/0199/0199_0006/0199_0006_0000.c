#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned int, signed int);
extern signed short (*v4) (unsigned int, signed int);
extern unsigned short v5 (unsigned short, signed char);
extern unsigned short (*v6) (unsigned short, signed char);
extern signed int v7 (unsigned int, unsigned int);
extern signed int (*v8) (unsigned int, unsigned int);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
void v15 (signed char, unsigned int);
void (*v16) (signed char, unsigned int) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (unsigned short, signed int, signed short);
extern signed char (*v20) (unsigned short, signed int, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, signed int, signed short, signed int);
extern void (*v24) (signed char, signed int, signed short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned char v32 = 2;
unsigned char v31 = 6;

unsigned int v29 (void)
{
{
for (;;) {
signed short v36 = -2;
signed int v35 = 2;
signed int v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed char v37, unsigned int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 0;
signed char v40 = 2;
signed char v39 = 1;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
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
unsigned short v44;
v44 = v1 ();
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
