#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern unsigned char v5 (signed int, unsigned char, signed int);
extern unsigned char (*v6) (signed int, unsigned char, signed int);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
signed short v11 (unsigned char);
signed short (*v12) (unsigned char) = v11;
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned int, signed short);
extern signed short (*v18) (unsigned int, signed short);
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 2U;
unsigned char v31 = 3;

signed int v23 (void)
{
{
for (;;) {
unsigned char v36 = 1;
signed int v35 = 3;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
signed short v39 = -1;
unsigned int v38 = 5U;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v41;
unsigned char v42;
unsigned int v43;
signed short v44;
v41 = v37 + 1;
v42 = 7 - 0;
v43 = 3U - 3U;
v44 = v1 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 13: 
return 3;
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
unsigned char v47;
unsigned char v48;
unsigned int v49;
signed short v50;
v47 = 6 + v33;
v48 = v31 + v31;
v49 = 6U + 3U;
v50 = v1 (v47, v48, v49);
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
