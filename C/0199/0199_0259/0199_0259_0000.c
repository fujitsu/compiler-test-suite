#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, signed int, signed int);
extern unsigned short (*v2) (signed short, signed int, signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern signed short v13 (signed int, unsigned int);
extern signed short (*v14) (signed int, unsigned int);
extern void v15 (signed int, signed char, signed short);
extern void (*v16) (signed int, signed char, signed short);
extern void v17 (unsigned int, signed short);
extern void (*v18) (unsigned int, signed short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned int, unsigned int, signed short, unsigned short);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed char v32 = 2;
unsigned int v31 = 1U;

signed int v27 (void)
{
{
for (;;) {
unsigned char v36 = 2;
unsigned char v35 = 6;
unsigned char v34 = 2;
trace++;
switch (trace)
{
case 5: 
return -1;
case 7: 
{
signed short v37;
signed int v38;
v37 = -3 - -2;
v38 = v29 (v37);
history[history_index++] = (int)v38;
}
break;
case 9: 
{
signed int v39;
v39 = v23 ();
history[history_index++] = (int)v39;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed int v42 = -1;
signed int v41 = 2;
unsigned int v40 = 0U;
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
signed short v45;
signed int v46;
signed int v47;
unsigned short v48;
v45 = -3 + 0;
v46 = 3 - 1;
v47 = 2 - -4;
v48 = v1 (v45, v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
