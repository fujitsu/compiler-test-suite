#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern unsigned short v7 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v8) (unsigned int, signed short, signed char, signed char);
extern signed int v9 (unsigned short, signed int, unsigned int, signed char);
extern signed int (*v10) (unsigned short, signed int, unsigned int, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
signed short v21 (unsigned int, unsigned char);
signed short (*v22) (unsigned int, unsigned char) = v21;
extern signed short v23 (unsigned short, signed int, signed short);
extern signed short (*v24) (unsigned short, signed int, signed short);
signed char v25 (unsigned char, signed char);
signed char (*v26) (unsigned char, signed char) = v25;
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned char v32 = 0;
unsigned int v31 = 5U;

signed char v25 (unsigned char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
signed char v37 = -1;
signed char v36 = -1;
trace++;
switch (trace)
{
case 4: 
return v37;
default: abort ();
}
}
}
}

signed short v21 (unsigned int v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 3;
signed int v42 = -3;
signed int v41 = 2;
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
signed int v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
