#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char, signed short, signed char, signed int);
extern unsigned int (*v16) (unsigned char, signed short, signed char, signed int);
unsigned char v17 (signed short, signed char);
unsigned char (*v18) (signed short, signed char) = v17;
extern signed short v19 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v20) (signed int, unsigned short, signed int, unsigned short);
void v21 (void);
void (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned int v32 = 3U;
signed char v31 = 1;

void v21 (void)
{
{
for (;;) {
unsigned int v36 = 5U;
signed int v35 = -1;
unsigned char v34 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed short v41 = -2;
unsigned char v40 = 5;
unsigned char v39 = 6;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v42;
v42 = v23 ();
history[history_index++] = (int)v42;
}
break;
case 9: 
{
unsigned short v43;
v43 = v23 ();
history[history_index++] = (int)v43;
}
break;
case 11: 
return 0;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
