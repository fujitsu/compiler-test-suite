#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char, unsigned int, unsigned char);
signed int v3 (signed char, signed int);
signed int (*v4) (signed char, signed int) = v3;
extern signed short v5 (signed short, signed int);
extern signed short (*v6) (signed short, signed int);
extern void v7 (signed char, signed int, signed int);
extern void (*v8) (signed char, signed int, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern signed char v15 (unsigned char, signed short, unsigned int, signed int);
extern signed char (*v16) (unsigned char, signed short, unsigned int, signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed char v23 (unsigned short, signed char, signed int);
extern signed char (*v24) (unsigned short, signed char, signed int);
extern unsigned int v25 (unsigned char, signed char, signed char, signed char);
extern unsigned int (*v26) (unsigned char, signed char, signed char, signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed int v32 = 1;
unsigned int v31 = 3U;

signed short v21 (void)
{
{
for (;;) {
signed short v36 = 0;
signed int v35 = 2;
signed char v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v37, signed int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 3;
signed short v40 = 0;
signed char v39 = 1;
trace++;
switch (trace)
{
case 3: 
return v38;
case 7: 
{
unsigned char v42;
unsigned char v43;
v42 = 7 - 0;
v43 = 5 - 6;
v13 (v42, v43);
}
break;
case 13: 
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
signed short v46;
unsigned char v47;
unsigned int v48;
unsigned char v49;
unsigned char v50;
v46 = 0 - -4;
v47 = 7 + 3;
v48 = 0U - v31;
v49 = 7 - 2;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
