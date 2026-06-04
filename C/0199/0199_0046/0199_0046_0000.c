#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, signed short, signed char);
extern unsigned short (*v2) (signed int, signed char, signed short, signed char);
extern unsigned short v3 (unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned int, unsigned short, signed char);
extern signed int v5 (unsigned char, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char);
extern signed int v7 (unsigned short);
extern signed int (*v8) (unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, unsigned char, signed int);
extern signed char (*v12) (unsigned short, unsigned char, signed int);
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned short v17 (unsigned short, unsigned short);
unsigned short (*v18) (unsigned short, unsigned short) = v17;
unsigned char v19 (signed char, signed int, unsigned char, signed char);
unsigned char (*v20) (signed char, signed int, unsigned char, signed char) = v19;
static unsigned int v21 (unsigned short, signed char, unsigned char);
static unsigned int (*v22) (unsigned short, signed char, unsigned char) = v21;
extern signed char v23 (signed short, unsigned int, signed short);
extern signed char (*v24) (signed short, unsigned int, signed short);
extern signed short v25 (signed short, unsigned short, signed short);
extern signed short (*v26) (signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned int);
extern signed short (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned int v32 = 7U;
unsigned int v31 = 6U;

static unsigned int v21 (unsigned short v34, signed char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 1;
unsigned short v38 = 6;
signed char v37 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v40;
signed short v41;
unsigned int v42;
signed short v43;
v40 = 7U + 7U;
v41 = 0 - -3;
v42 = 0U - 4U;
v43 = v29 (v40, v41, v42);
history[history_index++] = (int)v43;
}
break;
case 5: 
{
unsigned int v44;
signed short v45;
unsigned int v46;
signed short v47;
v44 = 2U + 6U;
v45 = -3 + -3;
v46 = 0U - 5U;
v47 = v29 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 7: 
{
unsigned int v48;
signed short v49;
unsigned int v50;
signed short v51;
v48 = 7U + 7U;
v49 = -2 + -4;
v50 = 3U - 2U;
v51 = v29 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 9: 
{
unsigned int v52;
signed short v53;
unsigned int v54;
signed short v55;
v52 = 6U - 2U;
v53 = 1 - 1;
v54 = 6U + 4U;
v55 = v29 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v19 (signed char v56, signed int v57, unsigned char v58, signed char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 6;
unsigned char v61 = 7;
signed short v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -1;
signed short v66 = 3;
unsigned int v65 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v68;
signed char v69;
unsigned char v70;
unsigned int v71;
v68 = v63 - 5;
v69 = 1 - -1;
v70 = 3 - 6;
v71 = v21 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return v64;
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
signed int v74;
signed char v75;
signed short v76;
signed char v77;
unsigned short v78;
v74 = 3 - -4;
v75 = -4 - -4;
v76 = 0 + 0;
v77 = -1 + 2;
v78 = v1 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
