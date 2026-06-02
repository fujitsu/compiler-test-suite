#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (signed char, unsigned char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned char, signed char, unsigned int);
extern signed short (*v8) (unsigned char, signed char, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
signed int v15 (signed short);
signed int (*v16) (signed short) = v15;
extern signed char v17 (unsigned int, unsigned short);
extern signed char (*v18) (unsigned int, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
unsigned int v21 (signed short, signed int, unsigned short);
unsigned int (*v22) (signed short, signed int, unsigned short) = v21;
extern unsigned int v25 (signed short, signed short);
extern unsigned int (*v26) (signed short, signed short);
extern signed char v29 (unsigned int, unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed int v32 = 0;
unsigned char v31 = 4;

unsigned int v21 (signed short v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
unsigned char v38 = 4;
signed char v37 = -1;
trace++;
switch (trace)
{
case 3: 
return 6U;
default: abort ();
}
}
}
}

signed int v15 (signed short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 1U;
signed short v42 = 0;
signed int v41 = 1;
trace++;
switch (trace)
{
case 5: 
return v41;
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
