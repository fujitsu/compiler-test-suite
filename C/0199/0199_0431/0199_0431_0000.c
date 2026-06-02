#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
signed int v5 (unsigned char);
signed int (*v6) (unsigned char) = v5;
extern void v7 (signed char, signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, signed char, unsigned char, unsigned char);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned short v13 (signed int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed int v25 (unsigned short, signed char, unsigned short, signed short);
extern signed int (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (unsigned short, signed int, unsigned short);
extern void (*v28) (unsigned short, signed int, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed short v32 = 3;
signed short v31 = 2;

signed short v19 (void)
{
{
for (;;) {
signed short v36 = -3;
unsigned short v35 = 0;
unsigned short v34 = 1;
trace++;
switch (trace)
{
case 2: 
return v36;
case 4: 
{
unsigned short v37;
signed int v38;
unsigned short v39;
v37 = 3 + v35;
v38 = 0 - -4;
v39 = v35 + v34;
v27 (v37, v38, v39);
}
break;
case 12: 
return v36;
default: abort ();
}
}
}
}

signed char v9 (unsigned int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = 1;
unsigned int v42 = 5U;
signed short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 1;
signed short v46 = -2;
signed int v45 = 1;
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
unsigned int v50;
signed char v51;
unsigned char v52;
v50 = 6U - 1U;
v51 = v33 + -2;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
