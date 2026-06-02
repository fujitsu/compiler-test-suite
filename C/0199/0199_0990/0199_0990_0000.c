#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char, signed char, signed char, signed short);
extern signed int (*v12) (unsigned char, signed char, signed char, signed short);
extern unsigned int v13 (signed int, signed int);
extern unsigned int (*v14) (signed int, signed int);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern unsigned short v17 (signed short, unsigned char);
extern unsigned short (*v18) (signed short, unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned short, unsigned int);
extern signed int (*v22) (unsigned short, unsigned int);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed int, signed short, unsigned short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned char v32 = 4;
unsigned int v31 = 1U;

signed int v15 (void)
{
{
for (;;) {
unsigned short v36 = 6;
signed int v35 = 3;
unsigned char v34 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed char v37;
signed int v38;
v37 = 3 - 2;
v38 = v27 (v37);
history[history_index++] = (int)v38;
}
break;
case 7: 
{
signed char v39;
signed int v40;
v39 = 3 + 0;
v40 = v27 (v39);
history[history_index++] = (int)v40;
}
break;
case 9: 
{
signed char v41;
signed int v42;
v41 = 0 - -4;
v42 = v27 (v41);
history[history_index++] = (int)v42;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 0;
unsigned short v45 = 6;
unsigned char v44 = 2;
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
signed short v49;
v49 = v1 ();
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
