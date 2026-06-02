#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed char, signed int, unsigned short);
extern void (*v2) (signed char, signed char, signed int, unsigned short);
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v10) (unsigned short, unsigned int, signed short, unsigned short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int, signed char, signed int);
extern signed short (*v16) (signed int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = 1;
signed int v31 = -4;

void v27 (void)
{
{
for (;;) {
unsigned int v36 = 0U;
signed short v35 = 3;
signed int v34 = 3;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v3 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned int v39 = 6U;
signed char v38 = -1;
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
signed char v43;
signed char v44;
signed int v45;
unsigned short v46;
v43 = v32 + v32;
v44 = -4 - v32;
v45 = v31 + -4;
v46 = 4 + 0;
v1 (v43, v44, v45, v46);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
